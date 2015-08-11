module Store

	def self.add(stat, starter)
		stat.mp += starter.mp
		stat.ast += starter.ast
		stat.tov += starter.tov
		stat.pts += starter.pts
		stat.ftm += starter.ftm
		stat.fta += starter.fta
		stat.thpm += starter.thpm
		stat.thpa += starter.thpa
		stat.fgm += starter.fgm
		stat.fga += starter.fga
		stat.orb += starter.orb
		stat.drb += starter.drb
		stat.stl += starter.stl
		stat.blk += starter.blk
		stat.pf += starter.pf
	end

	def self.save(save, info)
		save.update_attributes(:mp => info.mp, :ast => info.ast, :tov => info.tov, :pts => info.pts, :ftm => info.ftm, :fta => info.fta,
			:thpm => info.thpm, :thpa => info.thpa, :fgm => info.fgm, :fga => info.fga, :orb => info.orb, :drb => info.drb, :stl => info.stl,
			:blk => info.blk, :pf => info.pf)
	end

	def self.result(team, season_id, past_team_id, games, quarter, home=nil, weekend=nil, travel=nil, rest=nil, offensive_efficiency=nil, win_percentage=nil, pace=nil)
		Result.create(:season_id => season_id, :past_team_id => past_team_id, :games => games, :quarter => quarter, :home => home, :weekend => weekend, :travel => travel,
			:rest => rest, :offensive_efficiency => offensive_efficiency, :win_percentage => win_percentage, :pace => pace,
			:mp => team.mp, :fgm => team.fgm, :fga => team.fga, :thpm => team.thpm, :thpa => team.thpa, :ftm => team.ftm, :fta => team.fta,
			:orb => team.orb, :drb => team.drb, :ast => team.ast, :stl => team.stl, :blk => team.blk, :tov => team.tov, :pf => team.pf, :pts => team.pts)
	end

end